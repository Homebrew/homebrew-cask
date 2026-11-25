cask "glkvm" do
  version "1.6.0,1789007253290,release,release1"
  sha256 "9d62edd809623caf2382f6d9f10f53610a05fcd143c1b1539115562fcf414288"

  url "https://static.gl-inet.com/edge-app-staging/kvm-mac/#{version.csv.first}-#{version.csv.third}/#{version.csv.second}/gl-kvm-#{version.csv.first}-#{version.csv.fourth}.dmg"
  name "GLKVM"
  desc "App for controlling GL.iNet KVM devices"
  homepage "https://www.gl-inet.com/app-rm/"

  livecheck do
    url "https://static.gl-inet.com/app/kvm/app_version.json"
    regex(%r{/v?(\d+(?:\.\d+)+)[._-](release\d*)/(\d+)/gl-kvm[._-]v?\d+(?:\.\d+)+[._-](release[^/]*)\.dmg}i)
    strategy :json do |json, regex|
      match = json.dig("macos", "url")&.match(regex)
      next if match.blank?

      "#{match[1]},#{match[3]},#{match[2]},#{match[4]}"
    end
  end

  depends_on :macos

  app "GLKVM.app"

  uninstall quit: "com.glinet.kvmdesk"

  zap trash: [
    "~/Library/Application Support/gl-kvm",
    "~/Library/Logs/gl-kvm",
  ]
end
