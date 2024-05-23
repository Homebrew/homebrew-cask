cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.15"
  sha256 arm:   "4edcb27ca82c8ceb8604d66fc9a5c3e852cdca225162444fc20b4542a3e69b6c",
         intel: "c358d636582a5e81e174e509d49fa210972fcf1ab7ffe7cefd1f3922a83af932"

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
