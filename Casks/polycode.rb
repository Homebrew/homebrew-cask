cask :v1 => "polycode" do
  version "0.8.4"
  sha256 :no_check

  depends_on :macos => ">= :lion"
  depends_on :arch => :x86_64

  url "http://polycode.org/download/content/PolycodeDarwin_#{version}.zip"
  name "Polycode"
  homepage "http://polycode.org/"
  license :gratis

  app "Darwin/Polycode.app"
end
