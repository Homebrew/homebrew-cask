cask "openshift-client" do
  arch arm: "-arm64"

  version "4.20.9"
  sha256 arm:   "ab760a3466d0911169e74a0ea26423119841999d6e522b275cf157709592a744",
         intel: "b2f3d0a320930688c87cd5847db9d6e8a497163c03533efcbf538e5b8d20b195"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "oc"

  zap trash: "~/.kube/config"
end
