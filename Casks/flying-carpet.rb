cask "flying-carpet" do
  version "4.1"
  sha256 "924f84af02d402385785cbcc3e0c2ba7920310ca75b6d06f462a5b3ae290dd61"

  url "https://github.com/spieglt/FlyingCarpet/releases/download/v#{version}/FlyingCarpetMac.zip"
  name "Flying Carpet"
  desc "File transfer over ad-hoc wifi"
  homepage "https://github.com/spieglt/flyingcarpet"

  app "Flying Carpet.app"
end
