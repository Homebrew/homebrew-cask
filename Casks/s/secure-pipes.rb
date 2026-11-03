cask "secure-pipes" do
  version "2.0.16"
  sha256 "648f0e7b693f6774ce0073333c6a744a3a2cb8404ba72a46e631c5de2191f2f2"

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

  zap launchctl: "net.edgeservices.secure-pipes.gateway-helper",
      delete:    [
        "/Library/LaunchDaemons/net.edgeservices.secure-pipes.gateway-helper.plist",
        "/Library/PrivilegedHelperTools/net.edgeservices.secure-pipes.gateway-helper",
      ],
      trash:     [
        "~/Library/Application Scripts/group.net.edgeservices.secure-pipes",
        "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.edgeservices.secure-pipes.sfl*",
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
