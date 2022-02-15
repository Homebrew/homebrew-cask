cask "openshift-client" do
  version "4.9.21"
  sha256 "583e18caa5377fc269a0d4889c3866ddb119947a1cfa8c1f5fcd3a442768f8cf"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac.tar.gz"
  name "Openshift Client"
  desc "OpenShift Command-line client, part of OKD"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  caveats <<~EOS
    This cli tool will not work with quarantine attributes.
    To use this cask, install it with:
      brew install --cask --no-quarantine #{token}
    WARNING: quarantining is a macOS security feature and you disable it at your own risk!
  EOS
end
