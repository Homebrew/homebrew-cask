cask "toinane-colorpicker" do
  arch arm: "arm64", intel: "x64"

  version "2.2.2"
  sha256 arm:   "59e0df7270d53902e0971a2f70c7cce6c646a0f58634ac8d7418dcc72a526d82",
         intel: "dc1af14fe9785a3e5906153aec20f2960266628b0428d9ca98ef4944dc4bef9b"

  url "https://github.com/toinane/colorpicker/releases/download/#{version}/Colorpicker-#{version}-#{arch}.dmg",
      verified: "github.com/toinane/colorpicker/"
  name "Colorpicker"
  desc "Get and save colour codes"
  homepage "https://colorpicker.fr/"

  # This is the default strategy, but we need to explicitly
  # specify it to continue checking it while it is deprecated
  livecheck do
    url :url
    strategy :git
  end

  disable! date: "2026-09-01", because: :unsigned

  app "Colorpicker.app"

  zap trash: "~/Library/Application Support/Colorpicker"
end
