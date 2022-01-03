cask "creality-slicer" do
  version "4.8.2-96"
  sha256 :no_check

  url "https://file2-cdn.creality.com/website/b049ecf6-2295-4fac-8d10-377dc67a494c"
  name "creality-slicer"
  desc "Slicer for all Creality FDM 3D printers"
  homepage "https://www.creality.com/download/"

  livecheck do
    url :homepage
    regex(/Creality_Slicer-((?:\d+(?:\.\d+)*)-build-(?:\d+(?:\.\d+)*))-Darwin\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].sub("-build-", "-") }
    end
  end

  app "Creality Slicer.app"
end
