cask "konica-minolta-bizhub-c750i-driver" do
  on_catalina :or_older do
    version "3.0.1,6454ed166639340e7f81bda0dcaeb554,129004"
    sha256 "4aebd127a1ca363611e04ebb5666efdaf3de2dff1e933bb7ac82f832de878f94"

    pkg "A4/C750i_C650i_C360i_C287i_C286i_C4050i_C4000i_C3320i.pkg"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "3.1.3A,55acec5c11f08a2d7a9a06fad48c8949,130158"
    sha256 "9855a756bf1a1b36a70447232cb98585015dc85a4dfb6ca6e3bd2b10a535610c"

    pkg "C750i_C650i_C360i_C287i_C286i_C4050i_C4000i_C3320i_11.pkg"

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
  end

  url "https://dl.konicaminolta.eu/en?tx_kmdownloadcentersite_downloadproxy[fileId]=#{version.csv.second}&tx_kmdownloadcentersite_downloadproxy[documentId]=#{version.csv.third}&tx_kmdownloadcentersite_downloadproxy[system]=KonicaMinolta&tx_kmdownloadcentersite_downloadproxy[language]=EN&type=1558521685"
  name "Konica Minolta Bizhub C750i/C650i/C360i/C287i/C286i/C4050i/C4000i/C3320i Printer Driver"
  desc "PostScript printer driver"
  homepage "https://www.konicaminolta.eu/eu-en/support/download-centre"

  depends_on macos: ">= :sierra"

  uninstall pkgutil: "jp.konicaminolta.print.package.C750i"
end
