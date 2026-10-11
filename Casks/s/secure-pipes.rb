cask "secure-pipes" do
  version "2.0.12"
  sha256 "8c6752017a48070ba8f70eaf254c6d37be73baf5f11ab1106c6dc25e18a0c253"

  url "https://secure-pipes.app/api/v1/releases/versions/#{version}/download"
  name "Secure Pipes"
  desc "Manage SSH connections and port forwarding"
  homepage "https://secure-pipes.app/"

  livecheck do
    url "https://secure-pipes.app/api/v1/releases/latest"
    strategy :json do |json|
      json.dig("release", "version")
    end
  end

  depends_on macos: :monterey

  app "Secure Pipes.app"

  uninstall quit: "net.edgeservices.secure-pipes"

  zap trash: [
    "~/Library/Application Scripts/group.net.edgeservices.secure-pipes",
    "~/Library/Application Support/Secure Pipes",
    "~/Library/Caches/net.edgeservices.secure-pipes",
    "~/Library/Caches/Secure Pipes",
    "~/Library/Group Containers/group.net.edgeservices.secure-pipes",
    "~/Library/HTTPStorages/net.edgeservices.secure-pipes",
    "~/Library/Preferences/net.edgeservices-config.plist",
    "~/Library/Preferences/net.edgeservices.connections.plist",
    "~/Library/Preferences/net.edgeservices.Secure-Pipes.plist",
    "~/Library/Preferences/net.edgeservices.secure-pipes.plist",
    "~/Library/WebKit/net.edgeservices.secure-pipes",
  ]
end
