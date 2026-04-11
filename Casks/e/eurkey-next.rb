cask "eurkey-next" do
  version "2026.03.22"
  sha256 "c951f9bfcfc426d38991d1bf8e0be1142bb902dddd84f97a575958f08057b243"

  url "https://github.com/felixfoertsch/EurKEY-Next/releases/download/#{version}/EurKEY-Next-#{version}.dmg",
      verified: "github.com/felixfoertsch/EurKEY-Next/"
  name "EurKEY Next keyboard layout"
  desc "Keyboard layout for Europeans, coders, and translators"
  homepage "https://eurkey-macos.eu/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  keyboard_layout "EurKEY-Next.bundle"

  # No zap stanza required

  caveats do
    reboot
  end
end
