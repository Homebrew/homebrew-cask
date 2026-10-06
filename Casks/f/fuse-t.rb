cask "fuse-t" do
  version "1.2.9"
  sha256 "a1b893740ded8ea034f1acc522ded1144f4a567a1f416daef8c1441cf2662f7f"

  url "https://github.com/macos-fuse-t/fuse-t/releases/download/#{version}/fuse-t-macos-installer-#{version}.pkg"
  name "FUSE-T"
  desc "Kext-less implementation of FUSE"
  homepage "https://www.fuse-t.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  pkg "fuse-t-macos-installer-#{version}.pkg"

  uninstall script:  {
              executable: "/Library/Application Support/fuse-t/uninstall.sh",
              input:      ["Y"],
              sudo:       true,
            },
            pkgutil: [
              "org.fuse-t.core.#{version}",
              "org.fuse-t.fskit.#{version}",
            ]

  # No zap stanza required
end
