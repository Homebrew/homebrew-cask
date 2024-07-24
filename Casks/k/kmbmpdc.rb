cask "kmbmpdc" do
  version "2.0.1"
  sha256 "6a0c00c1b7801465f203508926911d91d99e3fc25c4bebfebae3edaeb678cfdd"

  url "https://github.com/arttuperala/kmbmpdc/releases/download/v#{version}/kmbmpdc.tar.gz"
  name "kmbmpdc"
  name "kawaii menu bar music player daemon controller"
  homepage "https://github.com/arttuperala/kmbmpdc"

  deprecate! date: "2024-07-17", because: :unmaintained

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "kmbmpdc.app"

  caveats do
    requires_rosetta
  end
end
