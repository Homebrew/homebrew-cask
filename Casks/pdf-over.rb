cask "pdf-over" do
  version "4.4.0,1"
  sha256 :no_check

  url "https://technology.a-sit.at/technology/download/pdf-over-mac/"
  name "PDF-Over"
  desc "Digitally sign PDFs with the Austrian Buergerkarte or ID Austria"
  homepage "https://technology.a-sit.at/pdf-over/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "PDF-Over.app"

  uninstall trash: "~/.pdf-over"

  caveats do
    depends_on_java "8+"
  end
end
