cask "darktable" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "dmg", linux: "AppImage"
  url_name = on_system_conditional macos: "darktable", linux: "Darktable"

  version "5.6.1"
  sha256 arm:          "155c25a48e06023eeeda3640f6f4fc7848bc1ad8e7384ba1d7b63098986fbeda",
         intel:        "ab09e11d548a7028f7bacc2bc4549a272c4e8d385be0e38ecc9e7943914abe61",
         arm64_linux:  "87088ada0a614c2c61c6bc663249388fe9e1d4b57689de3a5fd98c7af348d75d",
         x86_64_linux: "867ba61fca41d614e6650fd92d6e7968d8c56a1d1dd2bbc3aa06b52508694ed6"

  on_macos do
    on_arm do
      depends_on macos: :sonoma
    end
    on_intel do
      depends_on macos: :sequoia
    end

    disable! date: "2026-09-01", because: :fails_gatekeeper_check

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
