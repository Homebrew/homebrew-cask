cask "flutter" do
  arch = Hardware::CPU.intel? ? "_" : "_arm64_"

  version "3.0.3"

  if Hardware::CPU.intel?
    sha256 "a81d9efcd0cd8a3bd9fa491c36870a9f732b401bc22f01cdb7d2262a7b2baf91"
  else
    sha256 "2f2f5da9f82bd29277655a0671bc5b523414471710529f9e3c784aa4d7cc8c8d"
  end

  url "https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos#{arch}#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra_release/releases/stable/macos/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  livecheck do
    url "https://storage.googleapis.com/flutter_infra_release/releases/releases_macos.json"
    regex(%r{/flutter[._-]macos[._-]v?(\d+(?:\.\d+)+)[._-]stable\.zip}i)
  end

  auto_updates true

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"

  zap trash: "~/.flutter"
end
