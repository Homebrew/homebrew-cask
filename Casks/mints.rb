cask "mints" do
  version "1.4.a,2021.05"
  sha256 "12d739e93c9c78e8a4ff56899dd0c8cd45aaedd8c767cd33dbbdda52f9863713"

  url "https://eclecticlightdotcom.files.wordpress.com/#{version.after_comma.major}/#{version.after_comma.minor}/mints#{version.before_comma.no_dots}.zip",
      verified: "eclecticlightdotcom.files.wordpress.com/"
  name "Mints"
  desc "Collection of tools for investigating problems and collecting system information"
  homepage "https://eclecticlight.co/mints-a-multifunction-utility/"

  livecheck do
    url "https://eclecticlight.co/downloads/"
    strategy :page_match do |page|
      page.scan(%r{
        href=.*?/(\d+)/(\d+)/mints\d+(?:([a-z]\d*))?\.zip
        [^>]*>\s*Mints\s*v?(\d+(?:\.\d+)+)
      }ix).map do |match|
        "#{match[3]}#{"." + match[2] if match[2]},#{match[0]}.#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :sierra"

  app "Mints#{version.major_minor.no_dots}/Mints.app"
end
