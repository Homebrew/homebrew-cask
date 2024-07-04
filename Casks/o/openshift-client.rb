cask "openshift-client" do
  arch arm: "-arm64"

  version "4.16.2"
  sha256 arm:   "807c64ebc413ddc01fdc0a931a7d9237394efa5492374c5a0dd276488df94a5c",
         intel: "2cd1199c9571ab66988d6e39f32f365a99f961ff7e013b0cbe9d74052941ceff"

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
