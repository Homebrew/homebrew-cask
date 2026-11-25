cask "flutter" do
  arch arm: on_system_conditional(macos: "_arm64")
  os macos: "macos", linux: "linux"
  archive_format = on_system_conditional macos: "zip", linux: "tar.xz"

  version "3.50.1"
  sha256 arm:          "872883d49965e0cc1d8e477d2d87f2f45930d13f94b34889e53783586f04c715",
         intel:        "5c3d3bbabc8edd58eb98605047c59c31a82895cfe7d119318d0f62cdbd5d47ed",
         x86_64_linux: "4ad17fc8462fbcef2ba19ff4a78c0a16b7147fde1add8578e267ea62cdb92678"

  on_macos do
    suite "flutter", target: "#{HOMEBREW_PREFIX}/share/flutter"
  end
  on_linux do
    depends_on arch: :x86_64

    artifact "flutter", target: "#{HOMEBREW_PREFIX}/share/flutter"
  end

  url "https://storage.googleapis.com/flutter_infra_release/releases/stable/#{os}/flutter_#{os}#{arch}_#{version}-stable.#{archive_format}"
  name "Flutter SDK"
  desc "UI toolkit for building applications for mobile, web and desktop"
  homepage "https://flutter.dev/"

  livecheck do
    url "https://storage.googleapis.com/flutter_infra_release/releases/releases_#{os}.json"
    strategy :json do |json|
      json["releases"]&.map do |release|
        next if release["channel"] != "stable"

        release["version"]
      end
    end
  end

  auto_updates true

  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"

  zap trash: "~/.flutter"
end
