cask "openshift-client" do
  version "4.10.22"

  if Hardware::CPU.intel?
    sha256 "173982d6114f0a29dd77ae1975c5d82b9a609d5a47ddef11ced2e6871c83fd70"
  else
    sha256 "5f34bacec17efc7639a3a708e80e87ee9d755117db8c36e979979705b60cb784"
  end

  arch = Hardware::CPU.intel? ? "" : "-arm64"
  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
