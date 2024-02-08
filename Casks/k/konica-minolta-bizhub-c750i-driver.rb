cask "konica-minolta-bizhub-c750i-driver" do
  on_catalina :or_older do
    version "3.0.1,6454ed166639340e7f81bda0dcaeb554,129004"
    sha256 "4aebd127a1ca363611e04ebb5666efdaf3de2dff1e933bb7ac82f832de878f94"

    livecheck do
      skip "Legacy version"
    end

    pkg "A4/C750i_C650i_C360i_C287i_C286i_C4050i_C4000i_C3320i.pkg"
  end
  on_big_sur :or_newer do
    version "5.0.8A,3bf8a452dc84adbe533bfb1518b3466b,139507"
    sha256 "bf24079f41ffe2e11aadda8a11a3645cfeff6c3f553dc7dda15f3b45824f720f"

    livecheck do
      url "https://dl.konicaminolta.eu/en?tx_kmdownloadcenter_dlajaxservice[action]=getDocuments&tx_kmdownloadcenter_dlajaxservice[controller]=AjaxService&tx_kmdownloadcenter_dlajaxservice[productId]=103745&tx_kmdownloadcenter_dlajaxservice[system]=KonicaMinolta&cHash=dd72618a38434b6cb3edfc20595d58c5&type=1527583889"
      strategy :json do |json|
        items = json.select do |i|
          i["TypeOfApplicationName_textS"]&.match?(/driver/i) &&
            i["OperatingSystemsNames_textM"]&.grep(/macOS.*?#{Regexp.escape(MacOS.version.to_s)}/i)&.any?
        end

        item = items.max_by { |i| i["ReleaseDate_textS"] }
        files = item["DownloadFiles_textS"].split("\n").map { |file| file.split("|") }
        dmg = files.find { |f| f.first.end_with?(".dmg") }

        "#{item["Version_textS"]},#{Digest::MD5.hexdigest(dmg[2])},#{item["AnacondaId_textS"]}"
      end
    end

    pkg "C750i_C287i_C4050i_C4051i_11.pkg"
  end

  url "https://dl.konicaminolta.eu/en?tx_kmdownloadcentersite_downloadproxy[fileId]=#{version.csv.second}&tx_kmdownloadcentersite_downloadproxy[documentId]=#{version.csv.third}&tx_kmdownloadcentersite_downloadproxy[system]=KonicaMinolta&tx_kmdownloadcentersite_downloadproxy[language]=EN&type=1558521685"
  name "Konica Minolta Bizhub C750i/C650i/C360i/C287i/C286i/C4050i/C4000i/C3320i Printer Driver"
  desc "PostScript printer driver"
  homepage "https://www.konicaminolta.eu/eu-en/support/download-centre"

  depends_on macos: ">= :sierra"

  uninstall_preflight do
    set_ownership "/Library/Printers/KONICAMINOLTA/Preferences"
  end

  uninstall pkgutil: "jp.konicaminolta.print.package.C750i"

  zap trash: [
        "/Library/Printers/KONICAMINOLTA/Preferences/jp.konicaminolta.printers.C750i",
        "/Library/Printers/KONICAMINOLTA/Preferences/jp.konicaminolta.printers.C750i.plist",
      ],
      rmdir: "/Library/Printers/KONICAMINOLTA"
end
