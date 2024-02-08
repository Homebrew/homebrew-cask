cask "openshift-client" do
  arch arm: "-arm64"

  version "4.14.12"
  sha256 arm:   "a1409db3d8c26d44ee3c240f7b2305506383be3cb7f08e5ba1ca21ec0546c1ed",
         intel: "2a80fff65b04de4b8997dea4dc16150237892044905b6cd13b54634cfb2a490f"

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
