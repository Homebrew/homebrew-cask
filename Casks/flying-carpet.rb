cask "flying-carpet" do
  version "6.0"
  sha256 "34effd0ab3b9c784bb05f1b7fd464a2141be4e1d1020ba894d54d16ac1c22ef6"

  url "https://github.com/spieglt/FlyingCarpet/releases/download/v#{version}/FlyingCarpetMac.zip"
  name "Flying Carpet"
  desc "File transfer over ad-hoc wifi"
  homepage "https://github.com/spieglt/flyingcarpet"

  app "Flying Carpet.app"
end
