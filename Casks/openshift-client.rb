cask "openshift-client" do
  version "4.10.23"

  if Hardware::CPU.intel?
    sha256 "ae0e0abee1f66824e1e42b19853e5fbce8989b6ab79d92f51b5abc81055b64e5"
  else
    sha256 "645b67451e8c13c4b0aa61c1dcf878d94df2e4be5fa33fc1d5a84a38f2a24717"
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
