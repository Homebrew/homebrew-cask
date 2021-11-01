cask "eaglefiler" do
  version "1.9.5"
  sha256 "38b5049d3014ce70e940e650b6dec1dae373cf1df68d52e5966909a938204a1f"

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
