cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.5.0"
  sha256 arm:   "a97bd0f106bded613d5448a6c3f557d6ecab1f3dad8d1b2df6db7b889dd595e2",
         intel: "3af251566f5b158cc46cb66d48b165790b63d25fa6a96eb96e4d44968b282de7"

  url "https://github.com/marswaveai/ColaMD/releases/download/v#{version}/ColaMD-#{version}-#{arch}.dmg"
  name "ColaMD"
  desc "Markdown editor"
  homepage "https://colamd.com/"

  auto_updates true
  depends_on macos: :ventura

  app "ColaMD.app"

  zap trash: [
    "~/.colamd",
    "~/Library/Application Support/colamd",
    "~/Library/Preferences/ai.marswave.colamd.plist",
  ]
end
