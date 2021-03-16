cask "cinderella" do
  version "3.0b.1987"

  if Hardware::CPU.intel?
    sha256 "3947b3d5d535b050c306c164624be1a3f53629932df12aa168a0c47d913cde35"
    url "https://beta.cinderella.de/Cinderella-#{version}.dmg"
  else
    sha256 "979a40c5e29e2bd27500ec2f08dd908adbd5fb5fed3b2e11b39096e334441636"
    url "https://beta.cinderella.de/Cinderella-silicon-#{version}.dmg"
  end
  name "Cinderella"
  desc "Interactive Geometry Software"
  homepage "https://cinderella.de/"

  app "Cinderella.app"

  zap trash: [
    "~/Library/Preferences/cinderella2-user.properties",
    "~/Library/Preferences/cinderella2-global.properties",
  ]
end
