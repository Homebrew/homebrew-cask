cask "darktable" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "dmg", linux: "AppImage"
  url_name = on_system_conditional macos: "darktable", linux: "Darktable"

  version "5.6.2"
  sha256 arm:          "6ff88e58a2a59cb07b0a1502fea7205e68cd783380a33a3ce7bda68ec29def0c",
         arm64_linux:  "5b8015f8534453cb3bbd6e5a03e362cb7d9d9573f20d3928aadad354df18ad10",
         x86_64_linux: "4b0d1c737a2a18c7d8afb81aa3daaf25930bbe541dda98e6354dabd5c2e4dc36"

  on_macos do
    disable! date: "2026-09-01", because: :fails_gatekeeper_check

    depends_on arch: :arm64
    depends_on macos: :sonoma

    app "darktable.app"

    uninstall quit: "org.darktable"
  end
  on_linux do
    app_image "Darktable-#{version}-#{arch}.AppImage", target: "darktable.AppImage"
  end

  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.major_minor_patch}/#{url_name}-#{version}-#{arch}.#{os}"
  name "darktable"
  desc "Photography workflow application and raw developer"
  homepage "https://www.darktable.org/"

  livecheck do
    url :url
    regex(/^release[._-]v?(\d+(?:\.\d+)+)$/i)
    strategy :github_latest
  end

  zap trash: [
    "~/.cache/darktable",
    "~/.config/darktable",
    "~/.local/share/darktable",
    "~/Library/Saved Application State/org.darktable.savedState",
  ]
end
