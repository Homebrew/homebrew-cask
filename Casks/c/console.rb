cask "console" do
  version "0.3.1"
  sha256 "282455fda66cf8a84a551c2396649be8b668885b3a62819fbdd5033448934914"

  url "https://github.com/macmade/Console/releases/download/#{version}/Console.app.zip"
  name "Console"
  desc "Replacement for console application"
  homepage "https://github.com/macmade/Console"

  depends_on macos: ">= :el_capitan"

  app "Console.app"

  zap trash: [
    "~/Library/Preferences/com.xs-labs.Console.plist",
    "~/Library/Saved Application State/com.xs-labs.Console.savedState",
  ]
end
