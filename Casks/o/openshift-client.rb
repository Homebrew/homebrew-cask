cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.9"
  sha256 arm:   "848c0415a21a36d49c2cd1088ab41945d08757b66f76c52387625fbe3537fff5",
         intel: "0dd892b290b0f7221b3ce4fd34b0db2d4f97eb263c9ad790a95faadb48737c2f"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
