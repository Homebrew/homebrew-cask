cask "openshift-client" do
  version "4.10.21"

  if Hardware::CPU.intel?
    sha256 "96be4c48c4c37db0932e1d50e1dac9025cdbc0458f264143e373426fa387c062"
  else
    sha256 "34fe045d49237dd1814fbe62beb1b216516c5abfa7aea79106a7f976e5f4fc3a"
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
