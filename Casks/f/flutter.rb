cask "flutter" do
  arch arm: "_arm64"

  version "3.44.2"
  sha256 arm:   "57fbfdc7032678ab30ad577872bbfc4114a25d3cba94fbfa14a050ec61381a23",
         intel: "024d4e941ceb7c09fd9036e025c71bb8ce7e90eb2956fa8041a3260169aa2478"

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
  depends_on :macos

  suite "flutter", target: "#{HOMEBREW_PREFIX}/share/flutter"
  binary "flutter/bin/dart"
  binary "flutter/bin/flutter"

  zap trash: "~/.flutter"
end
