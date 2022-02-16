cask "eaglefiler" do
  version "1.9.6"
  sha256 "8326832770b8aa6ca841bc85ec1d169770983058c0b7e30e8f21839d1fb48ec0"

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name "EagleFiler"
  desc "Organize files, archive e-mails, save Web pages and notes, search everything"
  homepage "https://c-command.com/eaglefiler/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/EagleFiler[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "EagleFiler.app"
end
