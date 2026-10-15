cask "secure-pipes" do
  version "2.0.13"
  sha256 "139c675e9407ccd9d89724aaef3f1b7477870499a9c9080c5d646f9de20c36d6"

  url "https://secure-pipes.app/api/v1/releases/versions/#{version}/download"
  name "Secure Pipes"
  desc "Manage SSH tunnels, port forwarding, proxies, rule-based routing, SFTP, consoles"
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
