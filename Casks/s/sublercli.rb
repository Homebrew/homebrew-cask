cask "sublercli" do
  version "1.5.1"
  sha256 "30776e73cc51b858b1ff3efa7b4d4eae78832986b9147de2de6effada7e9ef14"

  url "https://bitbucket.org/galad87/sublercli/downloads/SublerCLI-#{version}.zip"
  name "SublerCLI"
  desc "Command-line version of Subler"
  homepage "https://bitbucket.org/galad87/sublercli/"

  binary "SublerCLI"

  # No zap stanza required

  caveats do
    requires_rosetta
  end
end
