cask "brave-origin@nightly" do
  arch arm: "arm64", intel: "x64"
  folder_arch = on_arch_conditional arm: "-arm64"

  sha256 arm:   "ab915c09f954594ab9bc9a7196bd083c69f69ad38d756566f12ccfac149577ab",
         intel: "8354d4ab17d6a39dcd744b98426b7b4a2ee5026da4d7f73e394a69c47f861c90"

  on_arm do
    version "1.97.10.0"
  end
  on_intel do
    version "1.97.10.0"
  end

  url "https://updates-cdn.bravesoftware.com/sparkle/Brave-Origin/nightly#{folder_arch}/#{version.major_minor_patch.sub(".", "")}/Brave-Origin-Nightly-#{arch}.dmg"
  name "Brave Origin Nightly"
  desc "Privacy-focused web browser"
  homepage "https://brave.com/origin/#nightly"

  livecheck do
    url "https://updates.bravesoftware.com/sparkle/Brave-Origin/nightly#{folder_arch}/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Brave Origin Nightly.app"

  zap trash: [
        "~/Library/Application Support/BraveSoftware/Brave-Origin-Nightly",
        "~/Library/Caches/BraveSoftware/Brave-Origin-Nightly",
        "~/Library/Caches/com.brave.Browser.origin.nightly",
        "~/Library/HTTPStorages/com.brave.Browser.origin.nightly",
        "~/Library/Preferences/com.brave.Browser.origin.nightly.plist",
        "~/Library/Saved Application State/com.brave.Browser.origin.nightly.savedState",
      ],
      rmdir: [
        "~/Library/Application Support/BraveSoftware",
        "~/Library/Caches/BraveSoftware",
      ]
end
