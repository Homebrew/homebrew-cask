cask "openshift-client" do
  version "4.10.26"

  if Hardware::CPU.intel?
    sha256 "5af55db66a87a0df1cadc1537be9d0c2877039ddd6bd49ab786b440bb21347d7"
  else
    sha256 "8f9a68fbaad6cd07c4535873d852481ae29b7d9a4236a2c6b0840b9f2b32164d"
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
