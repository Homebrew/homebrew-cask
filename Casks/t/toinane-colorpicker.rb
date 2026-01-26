cask "toinane-colorpicker" do
  arch arm: "-arm64"

  version "2.3.0"
  sha256 arm:   "98bc5be6e0d1c6193fab7f7b021635d8f35eab32bf5baabd33f599e41b79f3e8",
         intel: "1ad3018a9006e55fcf90cd90af0c0ec88d593df99ccf5636dee6cf1eea9d7a0a"

  url "https://github.com/toinane/colorpicker/releases/download/#{version}/Colorpicker-#{version}#{arch}.dmg",
      verified: "github.com/toinane/colorpicker/"
  name "Colorpicker"
  desc "Get and save colour codes"
  homepage "https://colorpicker.fr/"

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: ">= :monterey"

  app "Colorpicker.app"

  zap trash: "~/Library/Application Support/Colorpicker"
end
