cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.8"
  sha256 arm:   "75d751095111d5114a9b2daabafffb09e434373b80b1b844dc12f8a854606890",
         intel: "c70aa3adcc3bcef79d1e713f2b76126d71fd244376a8af46c81501f299961920"

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
