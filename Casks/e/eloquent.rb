cask "eloquent" do
  version "2.6.7"
  sha256 "e7872c6ce9e925e053d62be88e0bfd96dd36359551165aa506ec0e9ede193c55"

  url "https://github.com/mdbergmann/Eloquent/releases/download/#{version}/Eloquent-#{version}.app.zip"
  name "Eloquent"
  desc "Free/open-source Bible study application, based on the SWORD Project"
  homepage "https://github.com/mdbergmann/Eloquent"

  auto_updates true

  app "Eloquent.app"

  zap trash: [
    "~/Library/Application Support/Eloquent/",
    "~/Library/Logs/Eloquent.log",
    "~/Library/Preferences/org.crosswire.Eloquent.plist",
    "~/Library/Preferences/org.crosswire.Eloquent.plist.lockfile",
    "~/Library/Saved Application State/org.crosswire.Eloquent.savedState",
  ]
end
