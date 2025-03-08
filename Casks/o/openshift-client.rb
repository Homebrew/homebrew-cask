cask "openshift-client" do
  arch arm: "-arm64"

  version "4.18.4"
  sha256 arm:   "eb936134703e8ed55704a72f699542e84efae8899edfd41ecf3b5d28f4e29798",
         intel: "abe7e679ee851ff88c4f4b3e5ccd791cf26a7abfc6561ae38c886c57dcfa49ed"

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
