cask "nanosaur" do
  version "1.4.2"
  sha256 "dba04041067887cf1ec69f71ae922a653daa99b62abf1a47f5cddbf6dd6e6d95"

  url "https://github.com/jorio/Nanosaur/releases/download/v#{version}/Nanosaur-#{version}-mac.dmg",
      verified: "github.com/jorio/Nanosaur/"
  name "Nanosaur"
  desc "Science fiction 3rd person shooter game from Pangea Software"
  homepage "https://pangeasoft.net/nano/"

  app "Nanosaur.app"
  artifact "Documentation", target: "#{ENV["HOME"]}/Library/Application Support/Nanosaur"

  zap trash: "~/Library/Preferences/Nanosaur"
end
