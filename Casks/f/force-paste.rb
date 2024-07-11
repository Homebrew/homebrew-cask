cask "force-paste" do
  version "1.0.1"
  sha256 "b468d661ad09b45ac1ea2e8284559d75c4a970cb70749a3d45722d305ac41a6f"

  url "https://github.com/EugeneDae/Force-Paste/releases/download/#{version}/Force-Paste.zip"
  name "Force Paste"
  homepage "https://github.com/EugeneDae/Force-Paste"

  deprecate! date: "2024-07-10", because: :unmaintained

  app "Force Paste.app"

  caveats do
    requires_rosetta
  end
end
