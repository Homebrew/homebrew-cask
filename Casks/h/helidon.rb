cask "helidon" do
  version "3.0.6"
  sha256 "485a58eb5e82fe27ef8600329e3b1f79714d9a07c5993b6eba2bf37988179db8"

  url "https://github.com/helidon-io/helidon-build-tools/releases/download/#{version}/helidon-cli.zip",
      verified: "github.com/"
  name "helidon"
  desc "Command-line tool for Helidon application development"
  homepage "https://helidon.io/"

  livecheck do
    url "https://github.com/helidon-io/helidon-build-tools/releases"
    strategy :github_latest
  end

  binary "helidon-#{version}/bin/helidon"

  zap trash: [
      "~/.helidon",
    ]
end
