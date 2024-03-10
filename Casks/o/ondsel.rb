cask "ondsel" do
  arch arm: "apple-silicon-arm64", intel: "intel-x86_64"

  version "2024.1.0"
  sha256 arm:   "3eaf7a562e62e87b2a0e9b4194fe42a08784265629e4904371b26cae3827af89",
         intel: "7ba849d83ecface4c7595c93de8385e7d2956a82d7bdfe64353e52b96b87beec"

  # TODO: find a solution to replace the hardcoded build number in the url
  url "https://github.com/Ondsel-Development/FreeCAD/releases/download/2024.1.0/Ondsel_ES_#{version}.35694-macOS-#{arch}.dmg",
      verified: "github.com/Ondsel-Development/FreeCAD/"
  name "ondsel"
  desc "FreeCAD fork with a modernized UI"
  homepage "https://ondsel.com/"

  # Upstream uses GitHub releases to indicate that a version is released
  # (there's also sometimes a notable gap between the release being created
  # and the homepage being updated), so the `GithubLatest` strategy is necessary.
  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Ondsel ES.app"

  zap trash: [
    "~/Library/Application Support/Ondsel",
    "~/Library/Caches/Ondsel",
    "~/Library/Preferences/com.ondsel.Ondsel.plist",
    "~/Library/Preferences/Ondsel",
  ]
end
