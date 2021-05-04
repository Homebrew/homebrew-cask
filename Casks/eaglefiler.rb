cask "eaglefiler" do
  version "1.9.4"
  sha256 "f59d54128dbbda4d48e9dbf5b3d607285098a4b6a75d3eac12d0da2731eb8555"

  url "https://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name "EagleFiler"
  desc "Organize files, archive e-mails, save Web pages and notes, search everything"
  homepage "https://c-command.com/eaglefiler/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/EagleFiler-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "EagleFiler.app"
end
