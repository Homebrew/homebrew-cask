cask "overkill" do
  version "1.0"
  sha256 "e088b8a99ef76cffa56ec82b2f36e1461b974944de3d24996a43f503eb6c7606"

  url "https://github.com/KrauseFx/overkill-for-mac/releases/download/#{version}/Overkill.zip"
  name "Overkill"
  desc "Stop iTunes from opening when you connect your iPhone"
  homepage "https://github.com/KrauseFx/overkill-for-mac"

  deprecate! date: "2024-07-27", because: :unmaintained

  depends_on macos: ">= :sierra"

  app "Overkill.app"

  zap trash: "~/Library/Preferences/com.krausefx.Overkill.plist"

  caveats do
    requires_rosetta
  end
end
