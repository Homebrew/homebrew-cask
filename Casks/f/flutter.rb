cask "flutter" do
  arch arm: "_arm64"

  version "3.32.4"
  sha256 arm:   "599624a916ce5ff0c583e02bad29dc5f38bf35f2210009a4ef6338cc22cb1f2f",
         intel: "616b113b87b36bb9afce8a71354c8067131ea793f29d8586b9a2bd46dab5c94f"

  url "https://storage.googleapis.com/flutter_infra_release/releases/stable/macos/flutter_macos#{arch}_#{version}-stable.zip",
      verified: "storage.googleapis.com/flutter_infra_release/releases/stable/macos/"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  livecheck do
    url "https://storage.googleapis.com/flutter_infra_release/releases/releases_macos.json"
    strategy :json do |json|
      json["releases"]&.map do |release|
        next if release["channel"] != "stable"

        release["version"]
      end
    end
  end

  auto_updates true
  conflicts_with formula: "dart-sdk"

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"
  binary "flutter", target: "#{HOMEBREW_PREFIX}/share/flutter"

  zap trash: "~/.flutter"
end
