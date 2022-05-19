cask "openshift-client" do
  version "4.10.14"

  if Hardware::CPU.intel?
    sha256 "21f3d03cda66bacea5065614958173e35bdc777f95226122ff4b17c68dd06292"
  else
    sha256 "eb677d11b985e8f1f61f94780e094269bb255c426d319cacd1d9ca4697a38b4c"
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
