cask "openframe" do
  version :latest
  sha256 :no_check

  url "https://openframe.ai/v0/api/assets/download?agent=client&platform=macos"
  name "OpenFrame Client"
  desc "Device agent for remote monitoring and management"
  homepage "https://openframe.ai/"

  depends_on :macos

  installer script: {
    executable: "openframe-client",
    args:       ["install"],
    sudo:       true,
  }

  uninstall script: {
              executable:   "openframe-client",
              args:         ["uninstall"],
              sudo:         true,
              must_succeed: false,
            },
            delete: [
              "/usr/local/bin/openframe",
              "/usr/local/bin/openframe-client",
            ]

  zap delete: [
    "/Library/Application Support/OpenFrame",
    "/Library/LaunchDaemons/com.openframe.client.plist",
    "/Library/Logs/OpenFrame",
  ]

  caveats <<~EOS
    The OpenFrame service is installed and waiting for authentication. Finish with:
      sudo openframe auth --serverUrl <tenant host> --initialKey <key> --orgId <org id> --userId <user id>

    Updates are delivered by the OpenFrame platform; `brew upgrade` does not touch this cask.
    Remove with `brew uninstall --cask openframe` or `sudo openframe uninstall`.
  EOS
end
