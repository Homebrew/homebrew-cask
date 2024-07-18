cask "lockdown" do
  version "1.0.0"
  sha256 "047f377e2a9495361084268c86cc80719e123bd8958d69fe51cd2be0d7ffd764"

  url "https://bitbucket.org/objective-see/deploy/downloads/Lockdown_#{version}.zip",
      verified: "bitbucket.org/objective-see/"
  name "Lockdown"
  desc "Audits and remediates security configuration settings"
  homepage "https://objective-see.com/products/lockdown.html"

  app "Lockdown.app"

  caveats do
    requires_rosetta
  end
end
