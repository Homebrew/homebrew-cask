cask "mend" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "26.9.1"
  sha256 arm:          "20de1635a6175be74c16278ac0553ca78fc94de6d37f446fa3e5e041b371c815",
         intel:        "c21d038ff0d13dafa5b29ce9e46df230a0a487fd46c0a36356f8026bf7348e13",
         x86_64_linux: "2ca5667dc69d65f6ececeea92c1609861b669d5ca7fe2979dc1b2fdc299906ea"

  on_linux do
    depends_on arch: :x86_64
  end

  url "https://downloads.mend.io/cli/#{os}_#{arch}/mend"
  name "mend"
  desc "Application security scanning CLI"
  homepage "https://www.mend.io/"

  livecheck do
    url "https://downloads.mend.io/matrix.json"
    strategy :json do |json|
      json["latest"]
    end
  end

  binary "mend"

  zap trash: "~/.mend"
end
