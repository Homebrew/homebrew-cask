cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.16"
  sha256 arm:   "d96245707cbf7e6b965177833b4a4b5c0d4bc79d495afbe0f061809f83dc2d21",
         intel: "91b2949d8b6367378060274228ea6cfd9c224ec05acb9b2dc176d85e1fbf7d4b"

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
