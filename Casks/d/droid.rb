cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.36.3"
  sha256 arm:   "6b08074eab75a1a19b6efbcceef496fb8bc5a08cd1c405bd410f74f41a189a23",
         intel: "d917e54263bad6a0724ad302fbe67ef42e07ca9dadaf6c081e70c822a2474cb8"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "ripgrep"

  binary "droid"

  # No zap stanza required
end
