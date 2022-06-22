cask "eaglefiler" do
  version "1.9.8"
  sha256 "7e6dfcab228529eb45731a0a2d29ebc826729e8d5d08393c92bdd9fd0c5e7d15"

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
