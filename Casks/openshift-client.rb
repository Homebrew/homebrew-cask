cask "openshift-client" do
  version "4.10.18"

  if Hardware::CPU.intel?
    sha256 "285c307491d8ffd19c065a942515fda78e53f95289d4b4985aa4c92439f7f339"
  else
    sha256 "4a6efa36a00e6de6f630ca00703a559edb276fa511db7b841fab33b3af12f43c"
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
