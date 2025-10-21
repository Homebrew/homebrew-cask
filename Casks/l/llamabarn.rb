cask "llamabarn" do
  version "0.8.1"
  sha256 "2e0c83f7a3f6b931d8532ecc15835ffc995f8d2c94152a016b1cfd52169df7aa"

  url "https://github.com/ggml-org/LlamaBarn/releases/download/#{version}/LlamaBarn.dmg"
  name "LlamaBarn"
  desc "Menu bar app for running local LLMs"
  homepage "https://github.com/ggml-org/LlamaBarn"

  depends_on macos: ">= :sequoia"

  app "LlamaBarn.app"

  zap trash: "~/Library/Application Support/LlamaBarn"
end
