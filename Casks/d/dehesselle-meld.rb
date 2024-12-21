cask "dehesselle-meld" do
  arch arm: "arm64", intel: "x86_64"

  version "3.22.2+68"
  sha256 arm:   "5c21f6a4c5aad410e515484740b461fefdfa231635326c69a844938b4dfe37b5",
         intel: "a91bb4802db1d068475bf984d75a2174221a9f9f3ddfb690a080c7935a955554"

  url "https://gitlab.com/api/v4/projects/51547804/packages/generic/meld_macos/#{version}/Meld-#{version}_#{arch}.dmg"
  name "Meld for OSX"
  desc "Visual diff and merge tool"
  homepage "https://gitlab.com/dehesselle/meld_macos"

  livecheck do
    url "https://gitlab.com/dehesselle/meld_macos.git"
  end

  conflicts_with cask: "meld"
  depends_on macos: ">= :high_sierra"

  app "Meld.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/meld.wrapper.sh"
  binary shimscript, target: "meld"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/Meld.app/Contents/MacOS/Meld' "$@"
    EOS
  end

  zap trash: [
    "~/.local/share/meld",
    "~/Library/Application Support/org.gnome.Meld",
    "~/Library/Caches/org.gnome.Meld",
    "~/Library/Preferences/org.gnome.Meld.plist",
    "~/Library/Saved Application State/org.gnome.Meld.savedState/",
  ]
end
