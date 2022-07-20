cask "openshift-client" do
  version "4.10.24"

  if Hardware::CPU.intel?
    sha256 "6f4c57b485d9016c5a04abfe67e20a48e565d52f9aa1d56a20c23b2a82fb829d"
  else
    sha256 "cb6c0092efca2631f22620ca67b055e2bb8e08cc82701b3e6a7884abb906bfc0"
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
