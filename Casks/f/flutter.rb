cask "flutter" do
  arch arm: on_system_conditional(macos: "_arm64")
  os macos: "macos", linux: "linux"
  archive_format = on_system_conditional macos: "zip", linux: "tar.xz"

  version "3.50.0"
  sha256 arm:          "ed2d08a3e3c023e84cbe9316d21bd88fda6ee9552f90c1eb4da41a07c170fb35",
         intel:        "d4e1bf2e2fc0c2e92267f45660c16a7d805e84ad42cb40b64b466446bffe48e0",
         x86_64_linux: "6ea2d806fd57269ae783e6788e2a81fc26eaad782f1e0d0ff38623bb765ff9f5"

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
