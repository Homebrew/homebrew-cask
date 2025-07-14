cask "akuity" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.23.1-0.20250714075804-e950c559330f"
  sha256 arm:          "7158e56af44eddbedde95b9543f5955da129d308014ec38de171911f20a33039",
         intel:        "e3789b9a287efda6231ca2e977e796723f008c6089eab38c73692b9eac9017ff",
         arm64_linux:  "679b0dfda3345b306a724096bfff6f048f71b343e0dbf953b4ac1c66f147084e",
         x86_64_linux: "1cd78cbe50476288f78c051124b6f32a311c581a6dbdd4e9e9ed16a072613025"

  url "https://dl.akuity.io/akuity-cli/v#{version}/#{os}/#{arch}/akuity"
  name "Akuity"
  desc "Management tool for the Akuity Platform"
  homepage "https://akuity.io/"

  livecheck do
    url "https://dl.akuity.io/akuity-cli/stable.txt"
    regex(/v?(\d+(?:\.\d+)+(?:[_-]\d+(?:\.\d+)*)?(?:[_-]\h+)?)/i)
  end

  binary "akuity"

  zap trash: "~/.config/akuity"
end
