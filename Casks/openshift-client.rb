cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.7"
  sha256 arm:   "2a8c673251be3a5fe9b9c8f9a1114b1a453f4b4790a58a9827124c5abd4734ba",
         intel: "c21b7e618c5bed6984f3733be9364446c0950b22bc91bbdd921521b3b8f1c2c5"

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
