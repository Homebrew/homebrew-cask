cask "session-manager-plugin" do
  version "1.2.331.0"
  sha256 "14f70c34f8ed3a82698632461ecc408357a711541256261120346d17d6c25af3"

  url "https://s3.amazonaws.com/session-manager-downloads/plugin/#{version}/mac/session-manager-plugin.pkg",
      verified: "s3.amazonaws.com/session-manager-downloads/"
  name "Session Manager Plugin for the AWS CLI"
  desc "Plugin for AWS CLI to start and end sessions that connect to managed instances"
  homepage "https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-working-with-install-plugin.html"

  livecheck do
    url :homepage
    regex(%r{<td>\s*v?(\d+(?:\.\d+)+)\s*</td>}i)
  end

  pkg "session-manager-plugin.pkg"
  binary "/usr/local/sessionmanagerplugin/bin/session-manager-plugin"

  uninstall pkgutil: "session-manager-plugin"
end
