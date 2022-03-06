cask "eaglefiler" do
  version "1.9.7"
  sha256 "2afc2971ad3e6df806397e8fc77d916cbc9cf87777b042e7386aa344f6debe4a"

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
